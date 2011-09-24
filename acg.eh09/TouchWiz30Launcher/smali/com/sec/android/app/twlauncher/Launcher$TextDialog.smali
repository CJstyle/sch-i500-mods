.class Lcom/sec/android/app/twlauncher/Launcher$TextDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextDialog"
.end annotation


# instance fields
.field mId:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3699
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3699
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3699
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 3783
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 3784
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1702(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3785
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$2902(Lcom/sec/android/app/twlauncher/Launcher;I)I

    .line 3786
    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 3702
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 3703
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3705
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 3706
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3707
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3708
    const v2, 0x7f0a003c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3722
    :cond_0
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3724
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3731
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3744
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$TextDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3762
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3763
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3764
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3766
    return-object v1

    .line 3709
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 3710
    const v2, 0x7f0a003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 3711
    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 3718
    const v2, 0x7f0a0046

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3770
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->mId:I

    .line 3771
    .local v0, id:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3772
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 3773
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->cleanup()V

    .line 3775
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1702(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3779
    return-void
.end method
