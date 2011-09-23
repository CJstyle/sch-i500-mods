.class Lcom/android/server/status/StatusBarPolicy$7;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1502
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$7;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$7;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$3502(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1505
    return-void
.end method
