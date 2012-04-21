.class Lcom/android/phone/CallFeaturesSetting$2;
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
    .line 943
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 946
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 947
    .local v3, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 948
    .local v1, done:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 987
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 989
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v4, v4, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    if-eqz v4, :cond_1

    .line 990
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v5, 0x259

    invoke-virtual {v4, v5}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 992
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;)V

    .line 994
    :cond_2
    return-void

    .line 950
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object v3, v4, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 951
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v7

    :goto_1
    iput-boolean v5, v4, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 954
    const/4 v1, 0x1

    .line 955
    goto :goto_0

    :cond_3
    move v5, v6

    .line 951
    goto :goto_1

    .line 957
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v4, v4, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->arg1:I

    aput-object v3, v4, v5

    .line 958
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 964
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    .line 965
    .local v0, completed:Z
    if-eqz v0, :cond_0

    .line 966
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 968
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v4}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_0

    .line 971
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v6, v4, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 972
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v4, v4, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 973
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v4, v4, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:[Landroid/os/AsyncResult;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 976
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-boolean v7, v4, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 980
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 972
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
