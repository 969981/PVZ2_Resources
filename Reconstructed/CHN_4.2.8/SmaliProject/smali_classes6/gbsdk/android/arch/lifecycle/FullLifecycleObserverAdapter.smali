.class public Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 29
    sget-object v0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :pswitch_1
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onDestroy(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onStop(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onPause(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 37
    :pswitch_4
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onResume(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 34
    :pswitch_5
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onStart(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 31
    :pswitch_6
    iget-object p2, p0, Lgbsdk/android/arch/lifecycle/FullLifecycleObserverAdapter;->mObserver:Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;

    invoke-interface {p2, p1}, Lgbsdk/android/arch/lifecycle/FullLifecycleObserver;->onCreate(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
