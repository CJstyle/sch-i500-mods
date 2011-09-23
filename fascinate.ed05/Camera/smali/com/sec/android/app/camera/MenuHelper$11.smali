.class Lcom/sec/android/app/camera/MenuHelper$11;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$11;->val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$11;->val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$11;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$600(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
