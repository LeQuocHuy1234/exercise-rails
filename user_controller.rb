
[1mFrom:[0m /home/lequochuy/Desktop/Ruby/exercise-rails/app/controllers/users_controller.rb @ line 28 UsersController#check_login:

    [1;34m26[0m: [32mdef[0m [1;34mcheck_login[0m
    [1;34m27[0m:   @user = [1;34;4mUser[0m.find_by_email(params[[33m:email[0m])
 => [1;34m28[0m:   binding.pry
    [1;34m29[0m:   [32mif[0m @user && @user.authenticate(params[[33m:password[0m])
    [1;34m30[0m:     session[[33m:user[0m] = @user
    [1;34m31[0m:     redirect_to([33m:action[0m => [31m[1;31m'[0m[31mindex[1;31m'[0m[31m[0m)
    [1;34m32[0m:   [32melse[0m
    [1;34m33[0m:     flash[[33m:errors_login[0m] = [31m[1;31m'[0m[31mEmail hoặc Password nhập sai, vui long nhap lai[1;31m'[0m[31m[0m
    [1;34m34[0m:     render [31m[1;31m'[0m[31mlogin[1;31m'[0m[31m[0m
    [1;34m35[0m:   [32mend[0m
    [1;34m36[0m: [32mend[0m

