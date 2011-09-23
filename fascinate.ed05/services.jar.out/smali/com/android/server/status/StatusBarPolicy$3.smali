.class Lcom/android/server/status/StatusBarPolicy$3;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$3;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1434
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$3;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2400(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1437
    const/4 v0, 0x1

    .line 1439
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
