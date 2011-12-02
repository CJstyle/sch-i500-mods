.class public Lcom/android/music/list/data/MpListDisplayData;
.super Ljava/lang/Object;
.source "MpListDisplayData.java"


# instance fields
.field private mItemLayout:I

.field private mListLayout:I

.field private mListName:Ljava/lang/String;

.field private mOptionMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPicture:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mOptionMenu:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public addOptionMenu(Ljava/lang/Integer;)V
    .locals 1
    .parameter "_option"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mOptionMenu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mItemLayout:I

    return v0
.end method

.method public getListLayout()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mListLayout:I

    return v0
.end method

.method public getListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mListName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionMenus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mOptionMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPicture()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/music/list/data/MpListDisplayData;->mPicture:I

    return v0
.end method

.method public setItemLayout(I)V
    .locals 0
    .parameter "_layout"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/music/list/data/MpListDisplayData;->mItemLayout:I

    .line 36
    return-void
.end method

.method public setMenuLayout(I)V
    .locals 0
    .parameter "_layout"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/music/list/data/MpListDisplayData;->mListLayout:I

    .line 31
    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/music/list/data/MpListDisplayData;->mListName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setPicture(I)V
    .locals 0
    .parameter "_picture"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/music/list/data/MpListDisplayData;->mPicture:I

    .line 23
    return-void
.end method
