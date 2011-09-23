.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;
.super Landroid/os/UEventObserver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 158
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cd eject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    const/16 v1, 0x1388

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 161
    :cond_0
    return-void
.end method
