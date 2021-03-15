#!/bin/bash -xe

echo "args:${@:?引数が指定されていません。}"
outputDirPath=./dist
outputFileName=ec2-cfn.yml

mkdir -p ${outputDirPath}

# 固定値
sudo tee "${outputDirPath}/${outputFileName}" <<EOF >/dev/null

EOF

# 動的な値
for taskName in "${@}" ;
do

sudo tee -a ${outputDirPath}/${outputFileName} <<EOF >/dev/null
${taskName}
EOF

done

# 固定値
sudo tee ./ec2-cfn.yml <<EOF >/dev/null

EOF

