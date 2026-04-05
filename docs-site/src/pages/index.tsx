import type {ReactNode} from 'react';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import styles from './index.module.css';

// ── Chapter data ──────────────────────────────────────────────────────────────

const chapters = [
  {
    num: 0,
    title: 'Pre-Flight Check',
    branch: 'chapter-0-preflight',
    desc: 'Install Flutter, set up your IDE, and get the FlightBank starter app running.',
    time: '~15 min',
  },
  {
    num: 1,
    title: 'First Flight',
    branch: 'chapter-1-first-flight',
    desc: 'Build your first screens with the widget tree, Scaffold, and layout primitives.',
    time: '~25 min',
  },
  {
    num: 2,
    title: 'Reading the Instruments',
    branch: 'chapter-2-instruments',
    desc: 'Make the UI interactive with StatefulWidget, setState, and the widget lifecycle.',
    time: '~25 min',
  },
  {
    num: 3,
    title: 'Navigating the Skies',
    branch: 'chapter-3-navigation',
    desc: 'Set up GoRouter with declarative routes, path params, and auth guards.',
    time: '~30 min',
  },
  {
    num: 4,
    title: 'Building the Cockpit',
    branch: 'chapter-4-cockpit',
    desc: 'Theme the app with ColorScheme, TextTheme, dark mode, and responsive layout.',
    time: '~25 min',
  },
  {
    num: 5,
    title: 'Talking to the Tower',
    branch: 'chapter-5-networking',
    desc: 'Fetch data with the http package, async/await, and FutureBuilder patterns.',
    time: '~25 min',
  },
  {
    num: 6,
    title: 'Autopilot Engaged',
    branch: 'chapter-6-autopilot',
    desc: 'Upgrade from setState to Riverpod 3 with providers, notifiers, and code generation.',
    time: '~30 min',
  },
  {
    num: 7,
    title: 'Flight Recorder',
    branch: 'chapter-7-recorder',
    desc: 'Add local persistence with Drift — tables, DAOs, queries, and migrations.',
    time: '~30 min',
  },
  {
    num: 8,
    title: 'Forms & Checklists',
    branch: 'chapter-8-forms',
    desc: 'Build the transfer form with validation, formatters, and polished error UX.',
    time: '~25 min',
  },
  {
    num: 9,
    title: 'Smooth Flying',
    branch: 'chapter-9-smooth',
    desc: 'Add Hero transitions, implicit animations, and custom page transitions.',
    time: '~30 min',
  },
  {
    num: 10,
    title: 'Ground Control',
    branch: 'chapter-10-ground-control',
    desc: 'Bridge Flutter and native code with MethodChannel and platform plugins.',
    time: '~30 min',
  },
  {
    num: 11,
    title: 'Cleared for Landing',
    branch: 'chapter-11-landing',
    desc: 'Test your app (widget, integration, golden), profile performance, and ship it.',
    time: '~30 min',
  },
];

// ── Feature highlights ────────────────────────────────────────────────────────

const features = [
  {
    icon: '// {}',
    title: 'Learn by Building',
    desc: 'Build a real Flutter banking app — not a toy counter. Every chapter adds a production-ready feature.',
  },
  {
    icon: '12',
    title: '12 Progressive Chapters',
    desc: 'From installing the SDK in Chapter 0 to shipping a tested app in Chapter 11.',
  },
  {
    icon: '</>',
    title: 'Before & After',
    desc: 'Toggle between simple and production code. See exactly how each pattern improves your app.',
  },
];

// ── Components ────────────────────────────────────────────────────────────────

function HeroSection(): ReactNode {
  return (
    <header className={styles.hero}>
      <div className={styles.heroInner}>
        <p className={styles.heroPre}>Flutter Tutorial</p>
        <h1 className={styles.heroTitle}>Learning to Fly</h1>
        <p className={styles.heroTagline}>
          Master Flutter by building a real banking app.<br />
          From widgets to Riverpod, GoRouter to Drift.
        </p>
        <div className={styles.heroButtons}>
          <Link className={styles.btnPrimary} to="/chapters/preflight">
            Start Chapter 0
          </Link>
          <Link className={styles.btnSecondary} to="/intro">
            Read the Introduction
          </Link>
        </div>
      </div>
    </header>
  );
}

function FeaturesSection(): ReactNode {
  return (
    <section className={styles.features}>
      <div className={styles.container}>
        <div className={styles.featureGrid}>
          {features.map((f) => (
            <div key={f.title} className={styles.featureCard}>
              <div className={styles.featureIcon}>{f.icon}</div>
              <h3 className={styles.featureTitle}>{f.title}</h3>
              <p className={styles.featureDesc}>{f.desc}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

function ChapterRoadmap(): ReactNode {
  return (
    <section className={styles.roadmap}>
      <div className={styles.container}>
        <h2 className={styles.sectionTitle}>Chapter Roadmap</h2>
        <p className={styles.sectionSubtitle}>
          Twelve focused chapters, each building on the last. Total time: roughly 6 hours.
        </p>
        <ol className={styles.chapterList}>
          {chapters.map((ch) => (
            <li key={ch.num} className={styles.chapterItem}>
              <span className={styles.chapterNum}>{ch.num}</span>
              <div className={styles.chapterBody}>
                <div className={styles.chapterHeader}>
                  <strong className={styles.chapterTitle}>{ch.title}</strong>
                  <span className={styles.chapterTime}>{ch.time}</span>
                </div>
                <p className={styles.chapterDesc}>{ch.desc}</p>
              </div>
            </li>
          ))}
        </ol>
      </div>
    </section>
  );
}

function QuickStartSection(): ReactNode {
  return (
    <section className={styles.quickstart}>
      <div className={styles.container}>
        <h2 className={styles.sectionTitle}>Quick Start</h2>
        <p className={styles.sectionSubtitle}>
          Two commands and you're up — app on device, guide in your browser.
        </p>
        <div className={styles.quickstartGrid}>
          <div className={styles.codeBlock}>
            <p className={styles.codeLabel}>1. Clone and install</p>
            <pre className={styles.pre}>
              <code>{`git clone git@github.com:team360r/flight.git
cd flight
./setup.sh`}</code>
            </pre>
          </div>
          <div className={styles.codeBlock}>
            <p className={styles.codeLabel}>2. Start everything</p>
            <pre className={styles.pre}>
              <code>{`./start.sh
# Opens browser + launches app`}</code>
            </pre>
          </div>
          <div className={styles.codeBlock}>
            <p className={styles.codeLabel}>3. Open in your IDE</p>
            <pre className={styles.pre}>
              <code>{`code .
# VS Code — or open in Android Studio`}</code>
            </pre>
          </div>
        </div>
      </div>
    </section>
  );
}

function CtaSection(): ReactNode {
  return (
    <section className={styles.cta}>
      <div className={styles.container}>
        <h2 className={styles.ctaTitle}>Ready to learn Flutter?</h2>
        <p className={styles.ctaSubtitle}>
          Start with Chapter 0 — install the SDK, set up your IDE, and get FlightBank
          running on your device. The rest follows naturally.
        </p>
        <Link className={styles.btnPrimary} to="/chapters/preflight">
          Start Chapter 0: Pre-Flight Check
        </Link>
      </div>
    </section>
  );
}

// ── Page ──────────────────────────────────────────────────────────────────────

export default function Home(): ReactNode {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={siteConfig.title}
      description="Master Flutter by building a real banking app. 12 progressive chapters, from widgets to Riverpod, GoRouter to Drift.">
      <HeroSection />
      <main>
        <FeaturesSection />
        <ChapterRoadmap />
        <QuickStartSection />
        <CtaSection />
      </main>
    </Layout>
  );
}
