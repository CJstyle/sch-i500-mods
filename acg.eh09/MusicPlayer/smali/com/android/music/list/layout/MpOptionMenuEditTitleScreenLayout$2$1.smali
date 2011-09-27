.class Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2$1;
.super Ljava/lang/Object;
.source "MpOptionMenuEditTitleScreenLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 225
    if-nez p2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;->Camera()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;->MyFiles()V

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;->Delete()V

    goto :goto_0
.end method
