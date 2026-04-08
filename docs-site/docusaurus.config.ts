import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'CoreBank Tutorial',
  tagline: 'Master Flutter by building a real banking app',
  favicon: 'img/favicon.ico',

  future: {
    v4: true,
  },

  url: 'https://corebank-tutorial.dev',
  baseUrl: '/',

  organizationName: 'team360r',
  projectName: 'CoreBank',

  onBrokenLinks: 'throw',

  themes: ['@docusaurus/theme-mermaid'],
  markdown: {
    mermaid: true,
  },

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          routeBasePath: '/',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    image: 'img/social-card.jpg',
    colorMode: {
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'CoreBank Tutorial',
      logo: {
        alt: 'CoreBank Tutorial Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'tutorialSidebar',
          position: 'left',
          label: 'Tutorial',
        },
        {
          to: '/chapters/preflight',
          label: 'Get Started',
          position: 'right',
        },
      ],
      style: 'dark',
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Tutorial',
          items: [
            {
              label: 'Introduction',
              to: '/intro',
            },
            {
              label: 'Chapter 0: Pre-Flight Check',
              to: '/chapters/preflight',
            },
          ],
        },
      ],
      copyright: `Copyright \u00a9 ${new Date().getFullYear()} CoreBank Tutorial. Built with Docusaurus.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
      additionalLanguages: ['dart', 'bash', 'yaml', 'json', 'swift', 'kotlin'],
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
