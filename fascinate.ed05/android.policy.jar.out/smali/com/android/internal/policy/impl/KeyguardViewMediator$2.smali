.class Lcom/android/internal/policy/impl/KeyguardViewMediator$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "android.intent.action.PHONE_STATE"

    const-string v6, "KeyguardViewMediator"

    .line 1007
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1010
    const-string v4, "seq"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1015
    .local v3, sequence:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1018
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$202(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1019
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1020
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1135
    .end local v3           #sequence:I
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1024
    const-string v4, "gsm.default.esn"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, isDefaultEsn:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v5, "TRUE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_2

    move v5, v8

    :goto_1
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$502(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1027
    const-string v4, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doKeyguard : ESN is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const-string v4, "KeyguardViewMediator"

    const-string v4, "doKeyguard : hide Locked called when it has Default ESN"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 1025
    goto :goto_1

    .line 1037
    .end local v2           #isDefaultEsn:Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1038
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$802(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1040
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1048
    const-string v4, "KeyguardViewMediator"

    const-string v4, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1052
    :cond_4
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1064
    const-string v4, "KeyguardViewMediator"

    const-string v4, "Call incoming "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$108(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    .line 1066
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1067
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1068
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1071
    :cond_5
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1072
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v5, "phoneinECMState"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0

    .line 1074
    :cond_6
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1075
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1076
    :cond_7
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1077
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1078
    :cond_8
    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1079
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1080
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1082
    const-string v4, "KeyguardViewMediator"

    const-string v4, "Alarm is alerting..."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1084
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1085
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1087
    :cond_a
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1089
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1090
    .local v1, dockState:I
    const-string v4, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOCK EVENT , Dock State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-nez v1, :cond_c

    .line 1093
    sput v7, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    .line 1094
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1095
    const-string v4, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOCK EVENT , set Keyguard to true , Lockscreen is secure : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1802(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1097
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 1098
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1100
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    goto/16 :goto_0

    .line 1104
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1105
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1106
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1108
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    goto/16 :goto_0

    .line 1112
    :cond_c
    if-eq v1, v8, :cond_d

    if-ne v1, v9, :cond_11

    .line 1114
    :cond_d
    if-ne v1, v8, :cond_e

    .line 1115
    sput v8, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    .line 1116
    :cond_e
    if-ne v1, v9, :cond_f

    .line 1117
    sput v9, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    .line 1119
    :cond_f
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1120
    const-string v4, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOCK EVENT , set Keyguard to false , Lockscreen is secure : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 1122
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1802(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1124
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnableControl()V

    goto/16 :goto_0

    .line 1127
    :cond_10
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1128
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1132
    :cond_11
    const-string v4, "KeyguardViewMediator"

    const-string v4, "DOCK EVENT , undefined dock state"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
