.class Lcom/sec/android/app/controlpanel/StorageInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/StorageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/StorageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/StorageInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/StorageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/StorageInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/StorageInfo$1;->this$0:Lcom/sec/android/app/controlpanel/StorageInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/StorageInfo;->access$000(Lcom/sec/android/app/controlpanel/StorageInfo;)V

    .line 66
    return-void
.end method
