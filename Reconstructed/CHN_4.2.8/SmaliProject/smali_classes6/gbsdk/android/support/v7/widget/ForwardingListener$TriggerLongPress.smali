.class public Lgbsdk/android/support/v7/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ForwardingListener;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Lgbsdk/android/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 334
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ForwardingListener$TriggerLongPress;->this$0:Lgbsdk/android/support/v7/widget/ForwardingListener;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ForwardingListener;->onLongPress()V

    return-void
.end method
