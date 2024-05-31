from core.configs.config import global_cfg
from core.cmd_args import parse_args, parse_client_cfg
if __name__ == "__main__":
    # load the configuration file
    init_cfg = global_cfg.clone()
    args = parse_args()
    if args.cfg_file:
        init_cfg.merge_from_file(args.cfg_file)

    # freeze the configuration
    init_cfg.freeze()

    from core.simulators.simulator import get_simulator