import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/constants/constants_strings.dart';
import 'package:doctor_mid/ui/screens/AgendaScreens/agenda_first.dart';
import 'package:doctor_mid/ui/screens/AgendaScreens/agenda_second.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/ChatThrid_screen.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/chatSecond_screen.dart';
import 'package:doctor_mid/ui/screens/ChatScreens/patients_chat_screen.dart';
import 'package:doctor_mid/ui/screens/ConfiguracionScreens/configuracion_screen.dart';
import 'package:doctor_mid/ui/screens/EditarServicioScreens/editar_servicio_first_screen.dart';
import 'package:doctor_mid/ui/screens/EditarServicioScreens/editar_servicio_second_screen.dart';
import 'package:doctor_mid/ui/screens/EditarServicioScreens/editar_sevicio_third_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/agendar_nueva_cita_forth_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/agendar_nueva_cita_third_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/agender_nueva_cita_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/agensar_nueva_cita_Second.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/cita_cancelada_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/cita_finalized_screen.dart';
import 'package:doctor_mid/ui/screens/NeuvaCitaScreens/confirmation_delaCita_screen.dart';
import 'package:doctor_mid/ui/screens/PacientsScreens/pacients_fifth_screen.dart';
import 'package:doctor_mid/ui/screens/PacientsScreens/pacients_first_screen.dart';
import 'package:doctor_mid/ui/screens/PacientsScreens/pacients_forth_screen.dart';
import 'package:doctor_mid/ui/screens/PacientsScreens/pacients_second_screen.dart';
import 'package:doctor_mid/ui/screens/PacientsScreens/pacients_third_screen.dart';
import 'package:doctor_mid/ui/screens/PagosScreens/pagos_y_cobros_screen.dart';
import 'package:doctor_mid/ui/screens/PerfilScreen/perfil_screen.dart';
import 'package:doctor_mid/ui/screens/dashboard_screen.dart';
import 'package:doctor_mid/ui/screens/informacion_DelaCita_Screens/informacion_delacita_first_Screen.dart';
import 'package:doctor_mid/ui/screens/informacion_DelaCita_Screens/informacion_delacita_third_screen.dart';
import 'package:doctor_mid/ui/screens/notifications_screen.dart';
import 'package:doctor_mid/ui/screens/seleccion_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_datos_correctos_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_datos_incorrectos_screen.dart';
import 'package:doctor_mid/ui/screens/signIn_screen.dart';
import 'package:doctor_mid/ui/screens/signUp_screen.dart';
import 'package:doctor_mid/ui/screens/validacion_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialFlow extends StatefulWidget {
  static const id = 'InitialFlow';
  const InitialFlow({Key key}) : super(key: key);

  @override
  _InitialFlowState createState() => _InitialFlowState();
}

class _InitialFlowState extends State<InitialFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColor.primaryColor,
        title: ComponentText.buildTextWidget(
            title: 'Main Menu',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      body: Container(
        child: ListView(
          children: [
            buildListItem(
                title: ConstantString.SIGN_IN,
                onpressed: () {
                  Get.to(SignInScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_IN_SUCCESS,
                onpressed: () {
                  Get.to(SignInDatosCorrectosScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_IN_ERROR,
                onpressed: () {
                  Get.to(SignInDatosIncorrectosScreen());
                }),
            buildListItem(
                title: ConstantString.SIGN_UP,
                onpressed: () {
                  Get.to(SignUpScreen());
                }),
            buildListItem(
                title: ConstantString.DASHBOARD,
                onpressed: () {
                  Get.to(DashBoardScreen());
                }),
            buildListItem(
                title: ConstantString.NOTIFICATIONS,
                onpressed: () {
                  Get.to(NotificationsScreen());
                }),
            buildListItem(
                title: ConstantString.Validacion,
                onpressed: () {
                  Get.to(ValidacionDelCelularScreen());
                }),
            buildListItem(
                title: ConstantString.Seleccion,
                onpressed: () {
                  Get.to(SeleccionDeMembresiaScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_FIRST,
                onpressed: () {
                  Get.to(PatientsChatScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_SECOND,
                onpressed: () {
                  Get.to(ChatSecondScreen());
                }),
            buildListItem(
                title: ConstantString.CHAT_THIRD,
                onpressed: () {
                  Get.to(ChatThirdScreen());
                }),
            buildListItem(
                title: ConstantString.AGENDA_FIRST,
                onpressed: () {
                  Get.to(AgendaFirstScreen());
                }),
            buildListItem(
                title: ConstantString.AGENDA_SECOND,
                onpressed: () {
                  Get.to(AgendaSecondScreen());
                }),
            buildListItem(
                title: ConstantString.INFO_FIRST,
                onpressed: () {
                  Get.to(InfomacionDeLaCitaFirstScreen());
                }),
            buildListItem(
                title: ConstantString.INFO_THIRD,
                onpressed: () {
                  Get.to(InformacionDelaCitaThirdScreen());
                }),
            buildListItem(
                title: ConstantString.CONFIRMATION_DE_LA_CITA,
                onpressed: () {
                  Get.to(ConfirmacionDeLaCitaScreen());
                }),
            buildListItem(
                title: ConstantString.CITA_FINALIZED,
                onpressed: () {
                  Get.to(CitaFinaLizedScreen());
                }),
            buildListItem(
                title: ConstantString.CITA_CANCLED,
                onpressed: () {
                  Get.to(CitaCanceladaScreen());
                }),
            buildListItem(
                title: ConstantString.AGENDAR_NUEVA_CITA,
                onpressed: () {
                  Get.to(AgendarNuevaCita());
                }),
            buildListItem(
                title: ConstantString.AGENDAR_NUEVA_CITA_SECOND,
                onpressed: () {
                  Get.to(AgendarNuevaCitaSecond());
                }),
            buildListItem(
                title: ConstantString.AGENDAR_NUEVA_CITA_THIRD,
                onpressed: () {
                  Get.to(AgendarNuevaCitaThirdScreen());
                }),
            buildListItem(
                title: ConstantString.PATIENTSFIRST,
                onpressed: () {
                  Get.to(PacientsFirstScreen());
                }),
            buildListItem(
                title: ConstantString.PATIENTSECOND,
                onpressed: () {
                  Get.to(PacientsSecondScreen());
                }),
            buildListItem(
                title: ConstantString.PATIENTSTHIRD,
                onpressed: () {
                  Get.to(PacientsThirdScreen());
                }),
            buildListItem(
                title: ConstantString.PATIENTSFORTH,
                onpressed: () {
                  Get.to(PacientsForthScreen());
                }),
            buildListItem(
                title: ConstantString.PATIENTSFIFTH,
                onpressed: () {
                  Get.to(PacientsFifthScreen());
                }),
            buildListItem(
                title: ConstantString.CONFIGURATION,
                onpressed: () {
                  Get.to(ConfiguracionScreen());
                }),
            buildListItem(
                title: ConstantString.PROFILE,
                onpressed: () {
                  Get.to(PerfilScreen());
                }),
            buildListItem(
                title: ConstantString.EDITAR_FIRST,
                onpressed: () {
                  Get.to(EditarServicioFirstScreen());
                }),
            buildListItem(
                title: ConstantString.EDITAR_SECOND,
                onpressed: () {
                  Get.to(EditarServicioSecondScreen());
                }),
            buildListItem(
                title: ConstantString.EDITAR_Third,
                onpressed: () {
                  Get.to(EditarServicioThirdScreen());
                }),
            buildListItem(
                title: ConstantString.PAGOS,
                onpressed: () {
                  Get.to(PagosYCobrosScreen());
                }),
          ],
        ),
      ),
    );
  }

  Widget buildListItem({String title, Function onpressed}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ComponentText.buildTextWidget(
                  title: title,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              IconButton(
                  onPressed: onpressed, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Divider(
            height: 1.0,
          )
        ],
      ),
    );
  }
}
