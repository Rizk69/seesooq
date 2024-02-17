//
// enum ValidatorStatus {email,password,phone,address,firstName,lastName,other}
// class ValidatorHelper{
//
//    String? call(String ?value,ValidatorStatus validatorStatus) {
//     switch (validatorStatus..index) {
//       case validatorStatus.email:
//         return value
//             .toString()
//             .isEmpty ? 'Email is Required' : null;
//       case ValidatorStatus.password:
//         return value
//             .toString()
//             .isEmpty ? 'password is Required' : null;
//       case ValidatorStatus.phone:
//       return value
//         .toString()
//         .isEmpty ? 'phone is Required' : null;
//       case ValidatorStatus.address:
//         return value
//             .toString()
//             .isEmpty ? 'address is Required' : null;
//       case ValidatorStatus.firstName:
//         return value
//             .toString()
//             .isEmpty ? 'firstname is Required' : null;
//       case ValidatorStatus.lastName:
//         return value
//             .toString()
//             .isEmpty ? 'lastname is Required' : null;
//       case ValidatorStatus.other:
//         return value
//             .toString()
//             .isEmpty ? 'failed is Required' : null;
//     }
//     return null;
//   }
//
// }