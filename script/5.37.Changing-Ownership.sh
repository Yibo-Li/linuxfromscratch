#!/bin/bash
# 5.37. Changing Ownership
chown -Rv root:root $LFS/tools
tar -cvf $LFS/tools.tar -C $LFS tools
