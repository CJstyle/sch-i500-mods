.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field ar:Landroid/os/AsyncResult;

.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;Lcom/android/settings/deviceinfo/Status;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 107
    return-void
.end method

.method private handleGetOEMHiddenGetVersion(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const-string v2, "Status"

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in OEM_HIDDEN_GET_VERSION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->ar:Landroid/os/AsyncResult;

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "Status"

    const-string v0, "AsyncResult Exception Occur!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 143
    const-string v0, "Status"

    const-string v0, "ar.result == NULL! - No answer for GET_VERSION_response"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v2, "prl_version"

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #setter for: Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$302(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v1, "ril.prl_ver_1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$402(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v2, "eri_version"

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #setter for: Lcom/android/settings/deviceinfo/Status;->mEri:Landroid/preference/Preference;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$502(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v1, "ril.eri_ver_1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$602(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mEri:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 161
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mEri:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$600(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "PRL : <unknown>"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mEri:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$500(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "ERI : <unknown>"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/Status;

    .line 112
    .local v1, status:Lcom/android/settings/deviceinfo/Status;
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 131
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status$MyHandler;->handleGetOEMHiddenGetVersion(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    goto :goto_0

    .line 122
    :sswitch_2
    #getter for: Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 123
    .local v0, serviceState:Landroid/telephony/ServiceState;
    #calls: Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/Status;->access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 127
    .end local v0           #serviceState:Landroid/telephony/ServiceState;
    :sswitch_3
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/Status;->updateTimes()V

    .line 128
    const/16 v2, 0x1f4

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method
