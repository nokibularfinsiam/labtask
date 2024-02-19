import { Body, Controller, Get, Param, Post, Query, UsePipes, ValidationPipe } from "@nestjs/common";
import { DeliverymanService } from "./deliveryman.service";
import { DeliverymanDTO } from "./deliveryman.dto";



@Controller('/deliveryman')
export class DeliverymanController{
    constructor(private readonly deliverymanService: DeliverymanService){}
    @Get()
    getUsers(): object{
        return this.deliverymanService.getUsers();
    }
    
    @Post('deliverymanregister')
    @UsePipes(new ValidationPipe)
    async register(@Body() myobj: DeliverymanDTO): Promise<DeliverymanDTO>{
        return this.deliverymanService.register(myobj);
    }
}