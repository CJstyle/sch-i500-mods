.class Lcom/android/phone/CallFeaturesSetting$9;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$9;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const-string v5, "CallFeaturesSetting"

    .line 1770
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1772
    :pswitch_0
    const-string v3, "CallFeaturesSetting"

    const-string v3, "VOICE PRIVACY SET! response incoming!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1775
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 1777
    const-string v3, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult Exception Occur!!! Exept Num : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1781
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 1783
    const-string v3, "CallFeaturesSetting"

    const-string v3, "ar.result == NULL! - No answer for VOICE PRIVACY Set"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v3, "CallFeaturesSetting"

    const-string v3, "VOICE PRIVACY GET! response incoming!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1793
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1795
    const-string v3, "CallFeaturesSetting"

    const-string v3, "AsyncResult Exception Occur!!!"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1799
    :cond_2
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1801
    const-string v3, "CallFeaturesSetting"

    const-string v3, "ar.result == NULL! - No answer for VOICE PRIVACY Get response"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    :cond_3
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 1806
    .local v2, buf:[I
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$9;->this$0:Lcom/android/phone/CallFeaturesSetting;

    aget v4, v2, v6

    #setter for: Lcom/android/phone/CallFeaturesSetting;->voicePrivacy:I
    invoke-static {v3, v4}, Lcom/android/phone/CallFeaturesSetting;->access$902(Lcom/android/phone/CallFeaturesSetting;I)I

    .line 1808
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$9;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->voicePrivacy:I
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1810
    const-string v3, "CallFeaturesSetting"

    const-string v3, "VOICE PRIVACY GET! : Unchecked"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$9;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1815
    :cond_4
    const-string v3, "CallFeaturesSetting"

    const-string v3, "VOICE PRIVACY GET! : checked"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$9;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1770
    :pswitch_data_0
    .packed-switch 0x7ce
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
