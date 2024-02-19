import { Injectable } from "@nestjs/common";
import { DeliverymanDTO } from "./deliveryman.dto";


@Injectable()
export class DeliverymanService {

getUsers(): object{
    return {message: "hellow Admin"}
}


async register(myobj:DeliverymanDTO):Promise<DeliverymanDTO>{
    return myobj;

}
}