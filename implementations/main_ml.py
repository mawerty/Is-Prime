import torch 
import torch.nn as nn 

class Prime(nn.Module):
    def __init__(self):
        super().__init__()
        self.linear = nn.Linear(1,1)
        self.linear.apply(self.init_weights_biases)

    def init_weights_biases(self,m):
        if isinstance(m, nn.Linear):
            nn.init.constant_(m.weight, 1)
            nn.init.constant_(m.bias,0)

    def forward(self, number):
        out = self.linear(number)
        out = nn.functional.relu(out)
        return out 
    
def is_prime(number):
    if number<=0:
        raise ValueError("Don't you even know the definition of Prime Numbers, doofus!!")
    is_prime_model = Prime()
    input_tensor = torch.tensor([float(number)])
    output = is_prime_model(input_tensor)
    if output:
        return False

if __name__ == "__main__":
    is_prime(1)

    

