from django.db import models
from django.contrib.contenttypes.models import ContentType

from .XS.prj.XS.XS.ratings.ratings.categories import category_value


class OverallRatingManager(models.Manager):

    def top_rated(self, klass, category=None):
        cat = category_value(klass, category)
        return self.filter(
            content_type=ContentType.objects.get_for_model(klass),
            category=cat
        ).extra(
            select={
                "sortable_rating": "COALESCE(rating, 0)"
            }
        ).order_by("-sortable_rating")
