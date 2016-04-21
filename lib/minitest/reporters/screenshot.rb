module Minitest
  module Reporters
    module Screenshot
      # Use this method to explicitly create screenshots during your tests
      # @param file_name Screenshot file name without extension (png extension automatically added)
      def screenshot(file_name)
        save_screenshot File.join('test/screenshots', "#{file_name}.png")
      end
    end
  end
end
