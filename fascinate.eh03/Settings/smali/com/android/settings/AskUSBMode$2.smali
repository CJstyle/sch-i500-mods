.class Lcom/android/settings/AskUSBMode$2;
.super Ljava/lang/Object;
.source "AskUSBMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AskUSBMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AskUSBMode;


# direct methods
.method constructor <init>(Lcom/android/settings/AskUSBMode;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    const-string v1, "UMS"

    #calls: Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/AskUSBMode;->access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AskUSBMode$2;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v0}, Lcom/android/settings/AskUSBMode;->finish()V

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method
