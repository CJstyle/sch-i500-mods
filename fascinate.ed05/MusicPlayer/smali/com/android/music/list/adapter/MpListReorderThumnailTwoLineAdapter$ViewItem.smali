.class public Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
.super Ljava/lang/Object;
.source "MpListReorderThumnailTwoLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewItem"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mId:I

.field mMainText:Ljava/lang/String;

.field mSubText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;->this$0:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
