.class Lcom/sec/android/app/twlauncher/TopFourZone$1;
.super Ljava/lang/Object;
.source "TopFourZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/TopFourZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/TopFourZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$1;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 339
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 340
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v1, v0

    .line 342
    .local v1, app:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone$1;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->access$000(Lcom/sec/android/app/twlauncher/TopFourZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 344
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :cond_0
    return-void
.end method
