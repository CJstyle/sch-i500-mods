.class Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$2;
.super Ljava/lang/Object;
.source "MpOptionMenuEditTitleScreenLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3$2;->this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 294
    return-void
.end method
