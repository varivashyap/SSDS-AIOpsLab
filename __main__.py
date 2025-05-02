from clients.gpt import Agent
from aiopslab.orchestrator import Orchestrator
import asyncio

def main(args=None):
    agent = Agent()

    orchestrator = Orchestrator()
    orchestrator.register_agent(agent, name="gpt-w-shell")

    pid = "misconfig_app_hotel_res-mitigation-1"
    problem_desc, instructs, apis = orchestrator.init_problem(pid)
    agent.init_context(problem_desc, instructs, apis)
    result = asyncio.run(orchestrator.start_problem(max_steps=10))
    
    return {"status": "completed", "result": result}