#!/bin/bash

# Create the main project directory structure
mkdir -p core
mkdir -p core/configs
mkdir -p core/data/historical
mkdir -p core/data/preferences
mkdir -p core/data/realtime
mkdir -p core/simulators
mkdir -p core/strategies
mkdir -p core/traders
mkdir -p tests

# Create __init__.py files for necessary folders
touch core/__init__.py
touch core/configs/__init__.py
touch core/data/__init__.py
touch core/data/historical/__init__.py
touch core/data/preferences/__init__.py
touch core/data/realtime/__init__.py
touch core/simulators/__init__.py
touch core/strategies/__init__.py
touch core/traders/__init__.py
touch tests/__init__.py

# Create other files
touch backtest.py
touch core/cmd_args.py
touch core/configs/config_data.py
touch core/configs/config.py
touch core/configs/yacs_config.py
touch core/data/historical/historical_data.csv
touch core/data/preferences/trader123_preferences.json
touch core/data/realtime/realtime_data.py
touch core/data_ingestion.py
touch core/event_hooks.py
touch core/preferences.py
touch core/register.py
touch core/simulators/simulator.py
touch core/strategies/mean_reversion_strategy.py
touch core/strategy.py
touch gen_directory.sh
touch main.py
touch real_time_trading.py
touch requirements.txt
touch tests/test_backtesting.py
touch tests/test_data_ingestion.py
touch tests/test_event_hooks.py
touch tests/test_real_time_trading.py
touch tests/test_strategy_module.py
touch tests/test_user_preferences.py

# Output a message indicating the structure has been created
echo "Project structure has been created successfully."
