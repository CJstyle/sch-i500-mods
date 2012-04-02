.class Lcom/android/music/discplus/activity/DiscPlus$1;
.super Ljava/lang/Object;
.source "DiscPlus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/activity/DiscPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/activity/DiscPlus;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/activity/DiscPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus$1;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 138
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus$1;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v0}, Lcom/android/music/discplus/activity/DiscPlus;->finish()V

    .line 143
    return-void
.end method
