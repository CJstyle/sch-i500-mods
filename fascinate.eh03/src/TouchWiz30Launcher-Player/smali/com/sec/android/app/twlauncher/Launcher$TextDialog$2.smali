.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;
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
    .line 3732
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3734
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget v0, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 3735
    .local v0, id:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3736
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 3740
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->access$2700(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    .line 3741
    return-void

    .line 3737
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3738
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;->this$1:Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    goto :goto_0
.end method