#!/usr/bin/env python3
import shutil
import os

def check_disk_usage(disk):
    """Проверяет место на диске. Если свободно < 20%, бьет тревогу."""
    total, used, free = shutil.disk_usage(disk)
    free_percent = (free / total) * 100
    return free_percent > 20

def check_cpu_load():
    """Проверяет нагрузку CPU (если load average > 75% — плохо)."""
    # Получаем среднюю нагрузку за 1 минуту
    load1, load5, load15 = os.getloadavg()
    # Допустим, считаем, что нагрузка > 2.0 это много для нашего теста
    return load1 < 2.0

if not check_disk_usage("/"):
    print("CRITICAL: Disk space is ridiculously low!")
elif not check_cpu_load():
    print("WARNING: CPU load is high!")
else:
    print("Everything is OK. System is healthy.")
