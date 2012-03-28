.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 3697
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3699
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 3700
    .local v0, id:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3701
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()V

    .line 3702
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$2600(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    .line 3709
    :cond_0
    :goto_0
    return-void

    .line 3703
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3704
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    .line 3705
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$2600(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    goto :goto_0

    .line 3706
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3707
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->removePage()V

    goto :goto_0
.end method
