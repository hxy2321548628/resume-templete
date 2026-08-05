#let info=(
  company: "凯美瑞德（苏州）信息科技股份有限公司",
  start: datetime(year: 2025, month: 7, day: 1),
  end: datetime(year: 2026, month: 5, day: 30),
  project: "K8s 容器性能分析算法服务",
  job: none,
  github: none
)
*技术栈*: Python, FastAPI, Celery, Redis, Docker, Pydantic

*项目背景*：为某国有大行科技部门交付容器性能分析服务，将算法同事的单机脚本封装为行方可直接调用的 HTTP 服务。算法基于 CPU 版 PyTorch，单次长期预测耗时以小时计。我独立负责后端接口封装。

*核心贡献*:
+ *接口与算法解耦*：Celery + Redis 将小时级算法移出请求链路，提交即返回 task_id，Worker 按阶段更新任务状态, 客户端可轮询查询进度.
+ *幂等与重试*：以「模型 + 目标文件名」为幂等键在 Redis 原子占位，重复提交直接返回进行中任务的 task_id，避免小时级算法被重复拉起、空占 Worker；Worker 崩溃时任务重回队列并指数退避重试 2 次，累计 3 次失败则置为终态并释放幂等键，防止锁悬留阻塞后续提交。
+ *缓存优化*：结果查询走 Redis 缓存，省去重复的文件 I/O 与 CSV 解析；TTL 按各模型预测窗口对齐，新任务完成时主动失效。

*项目成果*：已在行方生产环境稳定运行并通过验收。
