
import logging

from core.configs.config import CN
from utils.register import register_config

logger = logging.getLogger(__name__)


def extend_data_cfg(cfg):
    # ---------------------------------------------------------------------- #
    # Dataset related options
    # ---------------------------------------------------------------------- #
    cfg.data = CN()

    cfg.data.root = 'data'

    # --------------- register corresponding check function ----------
    cfg.register_cfg_check_fun(assert_data_cfg)


def assert_data_cfg(cfg):
    pass


register_config("data", extend_data_cfg)
