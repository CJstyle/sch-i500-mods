.class Lcom/android/phone/BluetoothHandsfree$24;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$24;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2979
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$24;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$24;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHandsfree;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$7100(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
