from __future__ import absolute_import
from __future__ import print_function
from __future__ import division

import logging

logger = logging.getLogger(__name__)


def register(key, module, module_dict):
    if key in module_dict:
        logger.warning(
            'Key {} is already pre-defined, overwritten.'.format(key))
    module_dict[key] = module


config_dict = {}


def register_config(key, module):
    register(key, module, config_dict)