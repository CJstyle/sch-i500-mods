.class Lcom/sec/android/app/twlauncher/AppShortcutZone$1;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 183
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$000(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateOpen()V

    goto :goto_0
.end method
