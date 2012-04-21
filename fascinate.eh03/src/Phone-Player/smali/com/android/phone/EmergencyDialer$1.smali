.class Lcom/android/phone/EmergencyDialer$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v5, "From_EmergencyDialer"

    const-string v4, "EmergencyDialer"

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    goto :goto_0

    .line 160
    :cond_3
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    goto :goto_0

    .line 165
    :cond_5
    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "EmergencyDialer"

    const-string v2, "ACTION_DIAL"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "From_EmergencyDialer"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    .local v1, isFrom_EmergencyDialer:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 171
    const-string v2, "EmergencyDialer"

    const-string v2, "From_EmergencyDialer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
