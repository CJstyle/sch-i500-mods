.class public Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupItem"
.end annotation


# instance fields
.field public albumId:I

.field public mCheck:Z

.field public mIndex:I

.field mIsSeparator:Z

.field mLayout:I

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    return-void
.end method
