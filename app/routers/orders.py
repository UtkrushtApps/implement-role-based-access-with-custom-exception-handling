from fastapi import APIRouter, BackgroundTasks, status

router = APIRouter()

def notify_staff(order_id: int):
    pass

@router.post("/place", status_code=status.HTTP_201_CREATED)
def place_order(background_tasks: BackgroundTasks):
    # Process placing order here
    order_id = 1
    background_tasks.add_task(notify_staff, order_id)
    return {"message": "Order placed successfully.", "order_id": order_id}
