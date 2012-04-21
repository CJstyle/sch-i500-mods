.class Lcom/android/phone/OtaUtils$1;
.super Ljava/lang/Object;
.source "OtaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaUtils;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/phone/OtaUtils$1;->this$0:Lcom/android/phone/OtaUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/phone/OtaUtils$1;->this$0:Lcom/android/phone/OtaUtils;

    #calls: Lcom/android/phone/OtaUtils;->otaShowInProgressScreen()V
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$100(Lcom/android/phone/OtaUtils;)V

    .line 381
    return-void
.end method
