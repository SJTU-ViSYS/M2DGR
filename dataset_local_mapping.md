# M2DGR README 链接与本地文件对应表

核对时间：2026-10-22

## 本地路径

- Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences`
- GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT`

## 结论

- README 共 **36** 条序列，本地 **Rosbag 与 GT 均已齐全**（含命名映射后）
- 本地额外 Rosbag: `record.txt`（非 bag）
- 本地额外 GT 文件见文末

## 主序列对应表

| # | README 名 | 本地名 | Rosbag | GT | 采集日期 | README 大小 | 本地 Rosbag |
|---:|---|---|---|---|---|---|---|
| 1 | gate_01 | `gate_01`  | ✅ | ✅ | 2021-07-31 | 16.4g | 15.25GB |
| 2 | gate_02 | `gate_02`  | ✅ | ✅ | 2021-07-31 | 27.3g | 25.40GB |
| 3 | gate_03 | `gate_03`  | ✅ | ✅ | 2021-08-04 | 21.9g | 20.39GB |
| 4 | Circle_01 | `rotation_01` → `rotation_01` | ✅ | ✅ | 2021-08-03 | 23.3g | 21.65GB |
| 5 | Circle_02 | `rotation_02` → `rotation_02` | ✅ | ✅ | 2021-08-07 | 27.3g | 25.39GB |
| 6 | street_01 | `street_01`  | ✅ | ✅ | 2021-08-06 | 75.8g | 70.56GB |
| 7 | street_02 | `street_02`  | ✅ | ✅ | 2021-08-03 | 83.2g | 77.47GB |
| 8 | street_03 | `street_03`  | ✅ | ✅ | 2021-08-06 | 21.3g | 19.82GB |
| 9 | street_04 | `street_04`  | ✅ | ✅ | 2021-08-03 | 48.7g | 45.31GB |
| 10 | street_05 | `street_05`  | ✅ | ✅ | 2021-08-04 | 27.4g | 25.53GB |
| 11 | street_06 | `street_06`  | ✅ | ✅ | 2021-08-04 | 35.0g | 32.62GB |
| 12 | street_07 | `street_07`  | ✅ | ✅ | 2021-08-06 | 77.2g | 71.89GB |
| 13 | street_08 | `street_08`  | ✅ | ✅ | 2021-08-06 | 31.2g | 29.02GB |
| 14 | street_09 | `street_09`  | ✅ | ✅ | 2021-08-07 | 83.2g | 77.47GB |
| 15 | street_010 | `street_10` → `street_10` | ✅ | ✅ | 2021-08-07 | 86.2g | 80.33GB |
| 16 | walk_01 | `walk_01`  | ✅ | ✅ | 2021-08-04 | 21.5g | 20.05GB |
| 17 | lift_01 | `lift_01`  | ✅ | ✅ | 2021-08-04 | 18.4g | 17.13GB |
| 18 | lift_02 | `lift_02`  | ✅ | ✅ | 2021-08-04 | 43.6g | 40.60GB |
| 19 | lift_03 | `lift_03`  | ✅ | ✅ | 2021-08-15 | 22.3g | 20.81GB |
| 20 | lift_04 | `lift_04`  | ✅ | ✅ | 2021-08-15 | 27.8g | 25.90GB |
| 21 | hall_01 | `hall_01`  | ✅ | ✅ | 2021-08-01 | 29.1g | 27.06GB |
| 22 | hall_02 | `hall_02`  | ✅ | ✅ | 2021-08-08 | 15.0g | 13.93GB |
| 23 | hall_03 | `hall_03`  | ✅ | ✅ | 2021-08-08 | 20.5g | 19.11GB |
| 24 | hall_04 | `hall_04`  | ✅ | ✅ | 2021-08-15 | 17.7g | 16.50GB |
| 25 | hall_05 | `hall_05`  | ✅ | ✅ | 2021-08-15 | 35.1g | 32.71GB |
| 26 | room_01 | `room_01`  | ✅ | ✅ | 2021-07-30 | 14.0g | 13.07GB |
| 27 | room_02 | `room_02`  | ✅ | ✅ | 2021-07-30 | 15.2g | 14.12GB |
| 28 | room_03 | `room_03`  | ✅ | ✅ | 2021-07-30 | 26.1g | 24.33GB |
| 29 | room_dark_01 | `room_dark_01`  | ✅ | ✅ | 2021-07-30 | 20.2g | 18.77GB |
| 30 | room_dark_02 | `room_dark_02`  | ✅ | ✅ | 2021-07-30 | 30.3g | 28.22GB |
| 31 | room_dark_03 | `room_dark_03`  | ✅ | ✅ | 2021-07-30 | 22.7g | 21.11GB |
| 32 | room_dark_04 | `room_dark_04`  | ✅ | ✅ | 2021-08-15 | 29.3g | 27.33GB |
| 33 | room_dark_05 | `room_dark_05`  | ✅ | ✅ | 2021-08-15 | 33.0g | 30.74GB |
| 34 | room_dark_06 | `room_dark_06`  | ✅ | ✅ | 2021-08-15 | 35.6g | 33.14GB |
| 35 | door_01 | `door_01`  | ✅ | ✅ | 2021-08-04 | 35.5g | 33.03GB |
| 36 | door_02 | `door_02`  | ✅ | ✅ | 2021-08-04 | 10.5g | 9.77GB |

## 命名差异

| README | 本地 | 说明 |
|---|---|---|
| Circle_01 | rotation_01 | 同一序列，本地文件名不同 |
| Circle_02 | rotation_02 | 同一序列，本地文件名不同 |
| street_010 | street_10 | README 多一个 0 |

## 本地额外 GT（README 未单独列出）

| 文件 | 大小 | 可能对应 |
|---|---|---|
| `door_01leica.txt` | 113.74KB | door_01 Leica 轨迹 |
| `door_01mti.txt` | 3.35MB | door_01 MTI 轨迹 |
| `door_02leica.txt` | 51.98KB | door_02 Leica 轨迹 |
| `door_02mti.txt` | 1.41MB | door_02 MTI 轨迹 |
| `street2x.txt` | 11.99MB | street 系列扩展 |
| `street6x.txt` | 4.94MB | street_06 扩展 |
| `street7x.txt` | 9.21MB | street_07 扩展 |
| `street_10x.txt` | 8.86MB | street_10 变体/扩展 |

## OneDrive 链接

### gate_01 (`gate_01`)

- **Rosbag** [gate_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ET3mU1rvdTpEl8VYvC25q7YB5pmPQlwru0jBbQ9iu0oAMA?e=LrKUpJ)
- **GT** [gate_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EfipLVtlRChHvwklkDPylPgBSIQry0_JdfqH-6DaxWCaNA?e=idVsY4)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/gate_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/gate_01.txt`

### gate_02 (`gate_02`)

- **Rosbag** [gate_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EY7fHSh4NnxBvemze1JS8TEBy5beLh_xlJ6mdi2IYmeY9w?e=xIcvDe)
- **GT** [gate_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ETaXuADPMrNKlFn6pI9aqeoBmcgHr86fIsvDBB6cSaTBLA?e=gzaHPW)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/gate_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/gate_02.txt`

### gate_03 (`gate_03`)

- **Rosbag** [gate_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUthdjvVIVdFmFxR82jzVqUBQTpsfvvb26pYtb0yj-_hlw?e=6MWwmJ)
- **GT** [gate_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ETj90pEu4PBDpYIoI0nWEAMBiWU68VXMXpU7MKwWnpdXxA?e=1KLdX3)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/gate_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/gate_03.txt`

### Circle_01 (`rotation_01`)

- **Rosbag** [rotation_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUVwex_LapBFrWV4ZtXocoYBE29aoQkPVdwWGhSFcioEtQ?e=YRRV9L)
- **GT** [rotation_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EUlLxD27cGFArKGnpwkGrgEBr9FVGaSojLGVhJSNKaLLqQ?e=Bkptlj)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/rotation_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/rotation_01.txt`

### Circle_02 (`rotation_02`)

- **Rosbag** [rotation_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EeVG96IFCfxDlDLH8xefa3EBEMjCm4_8__V8JZ4ivMGoww?e=FVgjhB)
- **GT** [rotation_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EfVe45nxzepBsZSFp-yzqRMBpg_PYdZVS1L3FOYqA8WdcA?e=5BcVrA)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/rotation_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/rotation_02.txt`

### street_01 (`street_01`)

- **Rosbag** [street_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EavjoipiTMRIjUvmodSGGsoB8rg0_pOkp6pqDScr8h4zvQ?e=OjtWkL)
- **GT** [street_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ES2todVoF5VGmLo8WwKxcRYB4nyw6-zNR86I4BxAPnv_wg?e=ZtalWi)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_01.txt`

### street_02 (`street_02`)

- **Rosbag** [street_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQj5QBBHONpFj-hlvXOQBr0BM0NP9nhNuw-X9UtwOMMuNw?e=ZrxudN)
- **GT** [street_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EfOmlQh5BvJAorfLiI7orFgBJRR94rEjU163lvWgLAlA2Q?e=Z7mAcd)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_02.txt`

### street_03 (`street_03`)

- **Rosbag** [street_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQU95R6TOAZIkaoFuHJLU-kB9qJEIDeEsECB3Gjc9Nmx8A?e=J1AKwY)
- **GT** [street_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EQ4l4FNo69dPjWco2Pk8Zy4BuPWTFUGQHOv2KdO4MbTv2g?e=ZZf9ok)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_03.txt`

### street_04 (`street_04`)

- **Rosbag** [street_04.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/Ea72BxSXFYhDrp_FGNlJ2ukBx3CQSlv0Wah5nFUJtIntrw?e=4rwi7H)
- **GT** [street_04.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EadWM6nH74hBusYGre63WRcB0fM_ynkFJu2ibpSWtr5P-w?e=K7FJzV)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_04.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_04.txt`

### street_05 (`street_05`)

- **Rosbag** [street_05.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUClV6vL2zhAicOwwO1WiroBK-fPzTu8K8NtMfgdMAxIqw?e=r50mNo)
- **GT** [street_05.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EYrYgnp716xKo0-wcyVX2Z4BTnbbZuQrwYgaJIzREs923Q?e=gcGt7I)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_05.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_05.txt`

### street_06 (`street_06`)

- **Rosbag** [street_06.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
- **GT** [street_06.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ETFW7vEEmp9JvJiVZef0wooBN9r7mt8jj1WmVdzzNiIp7A?e=67FHW4)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_06.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_06.txt`

### street_07 (`street_07`)

- **Rosbag** [street_07.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfScTXrKjAdGg1w9xZ-yZgIBWu9gIswakQToN9guMPatQQ?e=YvjAUg)
- **GT** [street_07.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EefcYHlgA-RJiTl1jZl9r4ABr2YcrmTX7InDG_W6cHHrFQ?e=NQB203)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_07.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_07.txt`

### street_08 (`street_08`)

- **Rosbag** [street_08.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EdgojePkM2ZNszS6JM80D90B-2q68wWQ1vZijzeaH-IQrw?e=iwVIiX)
- **GT** [street_08.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/Ecv4IRMW5rBPn22pxW-xEYQBGinyVxrP6htbpS3HGnOpiA?e=TJXzJz)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_08.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_08.txt`

### street_09 (`street_09`)

- **Rosbag** [street_09.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/Ee5hiGAdou5OvPI_xeOHBh4BtRntB8-5qLXqCuXhXNB-Yw?e=wEkptw)
- **GT** [street_09.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EXb__m3Z0wdLkv_ybnXDOlUBVV41XM8_G1yHNO9oZKJE1w?e=xaZBGo)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_09.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_09.txt`

### street_010 (`street_10`)

- **Rosbag** [street_10.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfcpNeq8p-NLp7kCkaz0WugBf1c9TGtDbVBDy2QHF5rPvQ?e=lpnnAJ)
- **GT** [street_10.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ETWkYfjfaP5PuMUJmbHsLS0Btby-9W7V9n4bfob9DGP-pw?e=iOGOBW)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/street_10.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/street_10.txt`

### walk_01 (`walk_01`)

- **Rosbag** [walk_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZn2REI4E2BLurJXTaTDpYcBIMOoO3CKh9dsPbcMeMYTKg?e=R4cSKy)
- **GT** [walk_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EfNamQlwIeRGl0-gjktD1UEBMpXSWScVLL7VL1WUPiInhw?e=zmbJNp)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/walk_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/walk_01.txt`

### lift_01 (`lift_01`)

- **Rosbag** [lift_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZp-yCPxrxNBg5cM_aWualABVCNktGm29u0RA2UGVmyp2Q?e=BChvEN)
- **GT** [lift_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EQkO6B_IDPtItavRTjwedkoBQDUc6vV2jqtkOsmnWL7lhw?e=dDNVaE)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/lift_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/lift_01.txt`

### lift_02 (`lift_02`)

- **Rosbag** [lift_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfXP5V6Yi3tEvQL-Gbaq4QcBEVNxqacC-tltlzYnFnW7zQ?e=vgyEzS)
- **GT** [lift_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EX9iTyrQjWpKu9dI0Vx9uUkBAeLjUuU-PwUVT4yl1Tit1Q?e=toxiWg)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/lift_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/lift_02.txt`

### lift_03 (`lift_03`)

- **Rosbag** [lift_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWWG7OgCmTpIj_VZixYTkzsBew8ONoMrI13acbZ_8svV3g?e=1OVDYA)
- **GT** [lift_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EQgymOgmbiVDt8NPcb-HiYoBUKkfzJZeJnKZdOvAXMgWtA?e=mzM6kq)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/lift_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/lift_03.txt`

### lift_04 (`lift_04`)

- **Rosbag** [lift_04.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ETrPaBIVaV1EtTVUG9effPIBK1LiJ3pGK93jAdhLZU_Pjg?e=ekVtWl)
- **GT** [lift_04.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EYgfjuI3fZ9AsjGH1jKwwqcBlXsaRaEZ9TS8Y1VHlTpyCw?e=0fMc5n)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/lift_04.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/lift_04.txt`

### hall_01 (`hall_01`)

- **Rosbag** [hall_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWQ2bcxWRgZLtK_eSIgnNmoB_ozAyXeEU_MmlVqPZeiB7Q?e=BKghlK)
- **GT** [hall_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EYxqt8qdK2hCgzW7qoQQWEIBvWgJAC7rotStNWxiEXDigg?e=lJabX7)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/hall_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/hall_01.txt`

### hall_02 (`hall_02`)

- **Rosbag** [hall_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EaAEMKhvsgJCn0bSvlNOENkB-jVOOH4gxrxATSCbwPdUng?e=xCXoXE)
- **GT** [hall_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EWybRtZdpVhBtfPbB4PlvigBNXjgmp8PzHbcMBqUA2ivhA?e=WRoQN9)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/hall_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/hall_02.txt`

### hall_03 (`hall_03`)

- **Rosbag** [hall_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWyFq_niW4xIkk9pg2tLVfMBfT9JaC0ZUa0CogD6sND6Ew?e=ODUNxq)
- **GT** [hall_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EVL6pWtJ0yVNgDkZLYonkrMBcVAVN8pO2F5Kdh5tSh9fdg?e=nGDMba)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/hall_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/hall_03.txt`

### hall_04 (`hall_04`)

- **Rosbag** [hall_04.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EV0oYa2MNi1HqmhvCM1pbboBAqQlij03bPifdyd_cqZUDA?e=P56O61)
- **GT** [hall_04.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EUrqpdjawd9HgF7aVQxYL_cBKIye_pFquj3tobdSnj_H2w?e=iAEG0u)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/hall_04.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/hall_04.txt`

### hall_05 (`hall_05`)

- **Rosbag** [hall_05.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQRFrzmO2BxFmeAZV_ifTpsBJjdIM7XjQAnmnuDdhE9-Vg?e=WDZwUt)
- **GT** [hall_05.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EfuK4fEcs0JEtXGNWjEVI9UB9qHZjd7Y4WAs9XLZgmA4hQ?e=zQrXDW)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/hall_05.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/hall_05.txt`

### room_01 (`room_01`)

- **Rosbag** [room_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfG372xf9h9Dl0xjm5XcDgoB7JP0SsWJfAfpfO2CU-QOmw?e=XINjaC)
- **GT** [room_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ER6DA9bugPZNphRXA-zT_8QB4Hj0r0564NXknXHrlWuEcg?e=SlLMZM)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_01.txt`

### room_02 (`room_02`)

- **Rosbag** [room_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EaVK6tu2gs5NnOpAhhWrTPEBK_cpPGiq_1vDXET2GTCeNQ?e=2QpXCE)
- **GT** [room_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ES-9QFWKEeBNqxyMv5dJe7EB5YxfTzi8v3x2Hf1aLObnAg?e=ifwPHL)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_02.txt`

### room_03 (`room_03`)

- **Rosbag** [room_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZfZZNphLARHl0H4zLbM_kABbwkgl5efzhVqUeia8T-adQ?e=aWHDbk)
- **GT** [room_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EbcfH0djHMxCos8kfIH4i6wBBazfAOcFu6DLDSThzATf-w?e=W630hf)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_03.txt`

### room_dark_01 (`room_dark_01`)

- **Rosbag** [room_dark_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EXx8PoEtySBCvzFbYnQrFIkBDnjodZJ97_EVvXeSHW3snw?e=ZVsp9L)
- **GT** [room_dark_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/Ee4o6_FIKeNPqG-f2ahm7p0BPUExaiMABzHfvhj1xGRitQ?e=6IwX76)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_01.txt`

### room_dark_02 (`room_dark_02`)

- **Rosbag** [room_dark_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ERbnfghuh-NFo9W0Sev8cggBQQiTQLzjFiQy5So7j3J9tw?e=KEbKXr)
- **GT** [room_dark_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/Ef_CAOf_e-VLlu9xdAm2QSIBTP0B1QNm7uRG-s9EWib4hg?e=95qPDA)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_02.txt`

### room_dark_03 (`room_dark_03`)

- **Rosbag** [room_dark_03.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EXwiG7vYnsdKh2OotVeQKYsByEtckw39FPXiWLXBrA5kqw?e=0ZR9jg)
- **GT** [room_dark_03.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EXjFPcy4SrlCk5ZRvY9nGMkBzZuaSC6NVqPweU-1_OozuQ?e=E9uKVh)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_03.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_03.txt`

### room_dark_04 (`room_dark_04`)

- **Rosbag** [room_dark_04.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQqOn3hvPFVHin6apSr233wBJuG69N2iDPSauYQhKker4A?e=QUABfA)
- **GT** [room_dark_04.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EZ01sVBMNV9FloNLhb7XdeIB1bIp0GtwoxS0pXirZ9dO6A?e=KFFArd)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_04.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_04.txt`

### room_dark_05 (`room_dark_05`)

- **Rosbag** [room_dark_05.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/Ead7Ayxgh0REuN1J5SPDFFUBKMF8X3w2eGBCjOgefOs-VA?e=czasTj)
- **GT** [room_dark_05.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ET5ihyrgN3FCpR_i6yZeVPYBBANJ57Cq5ly44ddTOpPl7Q?e=la7ifj)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_05.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_05.txt`

### room_dark_06 (`room_dark_06`)

- **Rosbag** [room_dark_06.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUefMvN3g6hMos_qxocEH-4BYMFnt-yF4HxECfx3nDy81Q?e=laORp2)
- **GT** [room_dark_06.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/ESjB6YrPnKhMuSb-hM_ZSw0BltnaLhn41H6LgexZjebNsA?e=xuEjTp)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/room_dark_06.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/room_dark_06.txt`

### door_01 (`door_01`)

- **Rosbag** [door_01.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ERxIk8o_HwlAgbqJ2wwgHl8Br3uBZhyuBbxM2bG_0A6QYA?e=uQr94R)
- **GT** [door_01.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EVgYKmnhIy9AhCC1tOOKUOYB91dEx3mGmFQ9ewLtlNDw6g?e=uylMro)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/door_01.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/door_01.txt`

### door_02 (`door_02`)

- **Rosbag** [door_02.bag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWCKNoEfAmxGsahwnJDYWS4BfgEPoONQKR8HAuZA4ng5eg?e=KB9PYF)
- **GT** [door_02.txt](https://sjtueducn-my.sharepoint.com/:t:/g/personal/594666_sjtu_edu_cn/EdOFufA_mTxCoVlzcu285xoBpNQkaTaYdfL8Nd0Nad6mBQ?e=bxEbOK)
- 本地 Rosbag: `/media/yinjie/M2DGR/adataset/M2DGR/sequences/door_02.bag`
- 本地 GT: `/media/yinjie/M2DGR/adataset/M2DGR/GT/door_02.txt`
