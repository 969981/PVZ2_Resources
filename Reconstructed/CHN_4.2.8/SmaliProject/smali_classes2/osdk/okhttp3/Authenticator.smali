.class public interface abstract Losdk/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Losdk/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Losdk/okhttp3/Authenticator$1;

    invoke-direct {v0}, Losdk/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Losdk/okhttp3/Authenticator;->NONE:Losdk/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Losdk/okhttp3/Route;Losdk/okhttp3/Response;)Losdk/okhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
