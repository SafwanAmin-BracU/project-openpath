/**
 * AuthService - Handles authentication-related operations
 * 
 * This service follows the Single Responsibility Principle by focusing only on authentication.
 * It also follows the Dependency Inversion Principle by depending on abstractions rather than
 * concrete implementations through the use of TypeScript interfaces.
 */

// Define interfaces for authentication data (following Interface Segregation Principle)
export interface LoginCredentials {
  email: string;
  password: string;
}

export interface SignupCredentials {
  firstName: string;
  lastName: string;
  email: string;
  password: string;
  acceptTerms: boolean;
}

export interface AuthResult {
  success: boolean;
  message?: string;
  user?: {
    id: string;
    email: string;
    name: string;
  };
  token?: string;
}

/**
 * AuthService class - implements the Repository Pattern for authentication
 * This follows the Single Responsibility Principle by focusing only on auth operations
 */
export class AuthService {
  // Private properties to store auth state
  private _isAuthenticated: boolean = false;
  private _currentUser: any = null;
  private _token: string | null = null;
  
  /**
   * Login with email and password
   * @param credentials - Login credentials
   * @returns Promise with auth result
   */
  async login(credentials: LoginCredentials): Promise<AuthResult> {
    try {
      // In a real implementation, this would make an API call
      console.log('Logging in with:', credentials);
      
      // Simulate successful login
      this._isAuthenticated = true;
      this._currentUser = {
        id: 'user-123',
        email: credentials.email,
        name: 'John Doe'
      };
      this._token = 'simulated-jwt-token';
      
      return {
        success: true,
        user: this._currentUser,
        token: this._token
      };
    } catch (error) {
      return {
        success: false,
        message: error instanceof Error ? error.message : 'Login failed'
      };
    }
  }
  
  /**
   * Register a new user
   * @param credentials - Signup credentials
   * @returns Promise with auth result
   */
  async signup(credentials: SignupCredentials): Promise<AuthResult> {
    try {
      // In a real implementation, this would make an API call
      console.log('Signing up with:', credentials);
      
      // Simulate successful registration
      this._isAuthenticated = true;
      this._currentUser = {
        id: 'user-' + Math.floor(Math.random() * 1000),
        email: credentials.email,
        name: `${credentials.firstName} ${credentials.lastName}`
      };
      this._token = 'simulated-jwt-token';
      
      return {
        success: true,
        user: this._currentUser,
        token: this._token
      };
    } catch (error) {
      return {
        success: false,
        message: error instanceof Error ? error.message : 'Signup failed'
      };
    }
  }
  
  /**
   * Logout the current user
   */
  logout(): void {
    this._isAuthenticated = false;
    this._currentUser = null;
    this._token = null;
  }
  
  /**
   * Check if user is authenticated
   */
  get isAuthenticated(): boolean {
    return this._isAuthenticated;
  }
  
  /**
   * Get current user
   */
  get currentUser(): any {
    return this._currentUser;
  }
  
  /**
   * Get authentication token
   */
  get token(): string | null {
    return this._token;
  }
  
  /**
   * Request password reset
   * @param email - User email
   */
  async requestPasswordReset(email: string): Promise<AuthResult> {
    try {
      // In a real implementation, this would make an API call
      console.log('Requesting password reset for:', email);
      
      return {
        success: true,
        message: 'Password reset instructions sent to your email'
      };
    } catch (error) {
      return {
        success: false,
        message: error instanceof Error ? error.message : 'Password reset request failed'
      };
    }
  }
}

// Create a singleton instance (following Singleton pattern)
const authService = new AuthService();
export default authService;