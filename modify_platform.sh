#!/bin/bash

# Update Platform.txt for SAM 1.6.9
sed -i -e 's:recipe.c.combine.pattern="{compiler.path}{compiler.c.elf.cmd}" -mcpu={build.mcu} -mthumb {compiler.c.elf.flags} "-T{build.variant.path}/{build.ldscript}" "-Wl,-Map,{build.path}/{build.project_name}.map" {compiler.c.elf.extra_flags} -o "{build.path}/{build.project_name}.elf" "-L{build.path}" -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--start-group {compiler.combine.flags} {object_files} "{build.variant.path}/{build.variant_system_lib}" "{build.path}/{archive_file}" -Wl,--end-group -lm -gcc:recipe.c.combine.pattern="{compiler.path}{compiler.c.elf.cmd}" -mcpu={build.mcu} -mthumb {compiler.c.elf.flags} "-T{build.variant.path}/{build.ldscript}" "-Wl,-Map,{build.path}/{build.project_name}.map" {compiler.c.elf.extra_flags} -o "{build.path}/{build.project_name}.elf" "-L{build.path}" -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--start-group {compiler.combine.flags} {object_files} "{build.variant.path}/{build.variant_system_lib}" "{build.system.path}/CMSIS/CMSIS/Lib/GCC/libarm_cortexM3l_math.a" "{build.path}/{archive_file}" -Wl,--end-group -lm -gcc:' /home/pi/.arduino15/packages/arduino/hardware/sam/1.6.9/platform.txt
