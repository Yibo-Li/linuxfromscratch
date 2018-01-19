#!/bin/bash
# 7.7. The Bash Shell Startup Files
cat > /etc/profile << "EOF"
# Begin /etc/profile

export LANG=en_US.iso88591

# End /etc/profile
EOF
