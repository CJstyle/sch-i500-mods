.class Lcom/sec/android/app/twlauncher/TopFourZone$2;
.super Ljava/lang/Object;
.source "TopFourZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 348
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$2;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$2;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-static {v1, p1, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->access$100(Lcom/sec/android/app/twlauncher/TopFourZone;Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 354
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
