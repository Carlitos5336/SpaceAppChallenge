const IndexPage = () => {
  return (
    <main className="relative h-full overflow-hidden font-body">
      <Background />
      <Hero />
      <Mission />
      <Video />
    </main>
  );
};

const Background = () => (
  <div className="absolute w-full h-full min-h-screen">
    <div style={{ zIndex: "-9999" }} className="absolute inset-0 bg-black" />
    <img
      style={{ zIndex: "-9998" }}
      className="absolute inset-0 object-cover h-full"
      src="/background.png"
      aria-hidden
    />
    <img
      style={{ zIndex: "-9997" }}
      className="absolute inset-0 object-cover h-full"
      src="/small-stars.png"
      aria-hidden
    />
  </div>
);

const Hero = () => (
  <>
    <Ship />
    <section className="relative flex flex-col items-center justify-center space-y-8 overflow-hidden min-h-70">
      <header>
        <h1 className="text-4xl text-center text-white uppercase md:text-6xl lg:text-8xl font-display">
          Satellites
        </h1>
        <p className="text-xl font-medium tracking-widest text-center text-white uppercase md:text-3xl lg:text-4xl">
          Save your planet
        </p>
      </header>
      <div className="flex flex-col items-center space-y-2">
        <Button>Play Now</Button>
        <p className="text-xs text-white">
          *it'll take some seconds to load the game
        </p>
      </div>
    </section>
  </>
);

const Ship = () => (
  <img
    className="absolute top-0 bottom-0 right-0 mt-64 -mr-48 transform -rotate-45 w-72 md:w-6/12 lg:w-auto"
    src="/ship.png"
    aria-hidden
  />
);

const Mission = () => (
  <>
    <Earth />
    <section className="relative z-10 w-7/12 mx-auto space-y-16 md:py-64 lg:mx-0 lg:pr-12 lg:ml-auto">
      <header>
        <h1 className="text-4xl text-center text-white uppercase md:text-6xl lg:text-7xl font-display">
          You have a mission
        </h1>
        <p className="text-2xl font-medium tracking-widest text-center text-white uppercase md:text-4xl">
          Restore the satellites
        </p>
      </header>
      <div className="flex flex-col items-center space-y-8">
        <SkewedButton className="text-black bg-yellow-500">
          Destroy the asteroids
        </SkewedButton>
        <SkewedButton className="text-white bg-orange-600 md:ml-20">
          Get enough ore
        </SkewedButton>
        <SkewedButton className="text-white bg-orange-700 md:ml-40">
          Save the planet earth
        </SkewedButton>
      </div>
    </section>
  </>
);

const Video = () => {
  return (
    <section className="flex items-center justify-center pb-24 mt-20 md:mt-0">
      <button className="relative z-10 flex flex-col items-center px-20 py-4 space-y-8 sm:px-24">
        <img
          style={{ zIndex: "-1" }}
          src="/red-background.png"
          className="absolute w-full h-full rounded-lg"
        />

        <span className="text-xl font-light text-white uppercase sm:text-2xl md:text-4xl lg:text-6xl">
          Get To Know
        </span>
        <PlayButton />
        <span className="text-2xl text-white sm:text-3xl md:text-5xl font-display lg:text-7xl">
          Satellite
        </span>
      </button>
    </section>
  );
};

const PlayButton = (props) => (
  <svg
    width="170"
    height="100"
    viewBox="0 0 170 100"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
    {...props}
  >
    <rect width="170" height="100" rx="9" fill="#0572B9" />
    <path
      d="M110 51.732C111.333 50.9622 111.333 49.0377 110 48.2679L74 27.4833C72.6667 26.7135 71 27.6758 71 29.2154V70.7846C71 72.3242 72.6667 73.2865 74 72.5167L110 51.732Z"
      fill="white"
    />
  </svg>
);

const Earth = () => (
  <div className="absolute left-0 -mt-32 md:-mt-80">
    <img
      className="absolute w-16 mt-16 ml-8"
      src="/satellite.png"
      alt="earth"
    />
    <img
      style={{ marginLeft: "-50%", zIndex: "-1" }}
      className="animate-spin-slow"
      src="/earth.png"
      alt="earth"
    />
  </div>
);

const SkewedButton = ({ children, className }) => (
  <div
    className={`px-6 py-4 text-lg md:text-2xl transform -skew-x-10 w-64 md:w-80 rounded text-center ${className}`}
  >
    <span className="inline-flex transform skew-x-10">{children}</span>
  </div>
);

const Button = ({ children }) => (
  <div className="relative z-10 flex items-center p-2 border border-gray-700 group">
    <div
      style={{ backgroundColor: "#191824" }}
      className="absolute right-0 w-1 h-2 -mr-1"
    />
    <div
      style={{ backgroundColor: "#191824" }}
      className="absolute left-0 w-1 h-2 -ml-1"
    />

    <a
      href="https://play-satellite.netlify.app"
      className="relative px-12 py-3 overflow-hidden font-bold border focus:outline-none text-coral-red-500 border-coral-red-500"
    >
      <span className="relative z-10 transition-colors duration-100 ease-in-out group-hover:text-white">
        {children}
      </span>
      <div className="absolute top-0 left-0 z-0 w-0 h-full -ml-3 transition-all duration-500 ease-in-out transform group-hover:w-percent-120 -skew-x-10 bg-coral-red-500" />
      <div className="absolute bottom-0 right-0 w-1 h-1 transition-colors duration-200 ease-in-out bg-black group-hover:bg-white" />
    </a>
  </div>
);

export default IndexPage;
