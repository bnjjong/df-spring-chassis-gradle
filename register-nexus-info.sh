#!/bin/zsh
# 사용자로부터 NEXUS_URL 입력 받기
echo -n "NEXUS_URL을 입력하세요(포트포함): "
read NEXUS_URL

# 사용자로부터 NEXUS_USERNAME 입력 받기
echo -n "NEXUS_USERNAME을 입력하세요: "
read NEXUS_USERNAME

# 사용자로부터 NEXUS_PASSWORD 입력 받기 (비밀번호는 화면에 표시되지 않음)
echo -n "NEXUS_PASSWORD를 입력하세요: "
read -s NEXUS_PASSWORD
echo  # 새 줄 추가

# 환경변수 설정
echo "export NEXUS_URL=${NEXUS_URL}" >> ~/.zshrc
echo "export NEXUS_USERNAME=${NEXUS_USERNAME}" >> ~/.zshrc
echo "export NEXUS_PASSWORD=${NEXUS_PASSWORD}" >> ~/.zshrc

# 환경변수가 성공적으로 설정되었는지 확인
echo "NEXUS가 잘 설정되었습니다."
