.class public interface abstract Lcom/android/music/list/interfaces/MpSetViewInterface;
.super Ljava/lang/Object;
.source "MpSetViewInterface.java"


# static fields
.field public static final IndexTimerStart:I = 0x0

.field public static final IndexTimerStop:I = 0x2

.field public static final IndexTimerUpdate:I = 0x1


# virtual methods
.method public abstract getChecked()[Z
.end method

.method public abstract getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.end method

.method public abstract reset(Landroid/database/Cursor;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
.end method

.method public abstract setListView(Lcom/android/music/list/view/AbstractMpListView;)V
.end method
