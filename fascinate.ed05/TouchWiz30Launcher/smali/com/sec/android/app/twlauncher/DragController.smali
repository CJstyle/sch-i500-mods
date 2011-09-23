.class public interface abstract Lcom/sec/android/app/twlauncher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_COPY_AND_ICON_CENTER:I = 0x2

.field public static final DRAG_ACTION_MOVE:I


# virtual methods
.method public abstract startAnimation(Landroid/view/View;FFFFFFI)V
.end method

.method public abstract startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
.end method
