//데이터 디스크인 /dev/sdc 파티셔닝
sudo parted /dev/sdc --script mklabel gpt mkpart xfspart xfs 0% 100%

//XFS 파일 시스템으로 포맷
sudo mkfs.xfs /dev/sdc1

// partprobe 유틸리티를 사용하여 커널이 새 파티션 및 파일 시스템을 바로 인식하는지 확인
sudo partprobe /dev/sdc1

//디렉터리 생성과 마운트
sudo mkdir /jvbedata
sudo mount /dev/sdc1 /jvbedata

//샘플 파일 작성
cd /jvbedata
sudo touch readme.txt