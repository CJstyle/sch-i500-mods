.class Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3465
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3465
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3465
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3465
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->changeFolderName()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeFolderName()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3514
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3515
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3517
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$2000()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Launcher;->access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v3, v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$1902(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 3518
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3519
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3521
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$2100(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3522
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->lockAllApps()V

    .line 3523
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 3537
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->cleanup()V

    .line 3538
    return-void

    .line 3525
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$1100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 3527
    .local v0, folderIcon:Lcom/sec/android/app/twlauncher/FolderIcon;
    if-eqz v0, :cond_2

    .line 3528
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 3529
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto :goto_0

    .line 3531
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->lockAllApps()V

    .line 3532
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$2102(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3533
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 3542
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1702(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 3548
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1902(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 3549
    return-void

    .line 3543
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 3469
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f03000f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3470
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    .line 3472
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3473
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3474
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3475
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3476
    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3481
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3488
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3495
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3498
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3510
    return-object v1
.end method
