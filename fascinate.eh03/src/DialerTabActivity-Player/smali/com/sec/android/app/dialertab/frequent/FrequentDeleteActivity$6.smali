.class Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$6;
.super Ljava/lang/Object;
.source "FrequentDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 666
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 667
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method