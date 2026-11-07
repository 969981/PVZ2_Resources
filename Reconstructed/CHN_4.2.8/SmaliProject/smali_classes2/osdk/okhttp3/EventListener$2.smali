.class public final Losdk/okhttp3/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Losdk/okhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/EventListener;->factory(Losdk/okhttp3/EventListener;)Losdk/okhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Losdk/okhttp3/EventListener;


# direct methods
.method constructor <init>(Losdk/okhttp3/EventListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Losdk/okhttp3/EventListener$2;->val$listener:Losdk/okhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Losdk/okhttp3/Call;)Losdk/okhttp3/EventListener;
    .locals 0

    .line 65
    iget-object p1, p0, Losdk/okhttp3/EventListener$2;->val$listener:Losdk/okhttp3/EventListener;

    return-object p1
.end method
